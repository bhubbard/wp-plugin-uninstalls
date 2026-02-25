-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('supsystic_tbl_welcome_page_was_showed', 'supsystic_tbl_settings', 'dtgs_ac_remind', 'dtgs_ac_subscribe', 'dtgs_ac_disabled', 'supsystic_tables_love_link_title', 'supsystic_tables_show_love_link', 'supsystic_tables_last_check_love_link');
DELETE FROM wp_options WHERE option_name LIKE '%welcome_page_was_showed';
DELETE FROM wp_options WHERE option_name LIKE '%plug_welcome_show';
DELETE FROM wp_options WHERE option_name LIKE '%plug_was_used';
DELETE FROM wp_options WHERE option_name LIKE '%settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('supsystic-tables-tutorial_was_showed');
DELETE FROM wp_usermeta WHERE meta_key IN ('supsystic-tables-tutorial_was_showed');
DELETE FROM wp_termmeta WHERE meta_key IN ('supsystic-tables-tutorial_was_showed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('supsystic-tables-tutorial_was_showed');

