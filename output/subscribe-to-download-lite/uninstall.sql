-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stdl_settings', 'stdl_plugin_install_date');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_stdl_metabox_details', 'stdl_hide_review_notice', 'stdl_remind_later_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_stdl_metabox_details', 'stdl_hide_review_notice', 'stdl_remind_later_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_stdl_metabox_details', 'stdl_hide_review_notice', 'stdl_remind_later_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_stdl_metabox_details', 'stdl_hide_review_notice', 'stdl_remind_later_date');

