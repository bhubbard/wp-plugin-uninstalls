-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('learndash-hubspot-settings-key', 'learndash-hubspot-settings-deal', 'learndash-hubspot-settings-contact');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sfwd-quizzes', '_sfwd-courses', '_wp_attachment_image_alt', '_edit_last');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sfwd-quizzes', '_sfwd-courses', '_wp_attachment_image_alt', '_edit_last');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sfwd-quizzes', '_sfwd-courses', '_wp_attachment_image_alt', '_edit_last');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sfwd-quizzes', '_sfwd-courses', '_wp_attachment_image_alt', '_edit_last');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ldhs_dl_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ldhs_dl_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ldhs_dl_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ldhs_dl_%';

