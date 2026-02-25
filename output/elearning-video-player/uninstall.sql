-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_videolink', '_sub', '_poster', '_popuptime', '_quizz');
DELETE FROM wp_usermeta WHERE meta_key IN ('_videolink', '_sub', '_poster', '_popuptime', '_quizz');
DELETE FROM wp_termmeta WHERE meta_key IN ('_videolink', '_sub', '_poster', '_popuptime', '_quizz');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_videolink', '_sub', '_poster', '_popuptime', '_quizz');

