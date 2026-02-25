-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpal-settings', 'wpal_log_limit_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpal_published_flag', 'wpal_edited_flag', 'wpal_before_title', 'wpal_after_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpal_published_flag', 'wpal_edited_flag', 'wpal_before_title', 'wpal_after_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpal_published_flag', 'wpal_edited_flag', 'wpal_before_title', 'wpal_after_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpal_published_flag', 'wpal_edited_flag', 'wpal_before_title', 'wpal_after_title');

