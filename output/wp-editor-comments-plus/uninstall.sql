-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_all';
DELETE FROM wp_options WHERE option_name LIKE '%_reply';
DELETE FROM wp_options WHERE option_name LIKE '%_edit';
DELETE FROM wp_options WHERE option_name LIKE '%_submit';
DELETE FROM wp_options WHERE option_name LIKE '%_cancel';
DELETE FROM wp_options WHERE option_name LIKE '%_toolbar1';
DELETE FROM wp_options WHERE option_name LIKE '%_toolbar2';
DELETE FROM wp_options WHERE option_name LIKE '%_toolbar3';
DELETE FROM wp_options WHERE option_name LIKE '%_toolbar4';
DELETE FROM wp_options WHERE option_name LIKE '%_comments';
DELETE FROM wp_options WHERE option_name LIKE '%_respond';
DELETE FROM wp_options WHERE option_name LIKE '%_comment_form';
DELETE FROM wp_options WHERE option_name LIKE '%_comment_textarea';

