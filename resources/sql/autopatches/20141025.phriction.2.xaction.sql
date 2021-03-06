CREATE TABLE {$NAMESPACE}_phriction.phriction_transaction_comment (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  phid VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  transactionPHID VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  authorPHID VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  viewPolicy VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  editPolicy VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  commentVersion INT UNSIGNED NOT NULL,
  content LONGTEXT CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  contentSource LONGTEXT CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  isDeleted TINYINT(1) NOT NULL,
  dateCreated INT UNSIGNED NOT NULL,
  dateModified INT UNSIGNED NOT NULL,
  UNIQUE KEY `key_phid` (`phid`),
  UNIQUE KEY `key_version` (`transactionPHID`,`commentVersion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
