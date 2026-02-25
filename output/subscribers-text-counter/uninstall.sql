-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_subscribers_text_counter', 'widget_subscribers_text_counter_dynamic');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('example_ignore_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('example_ignore_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('example_ignore_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('example_ignore_notice');

