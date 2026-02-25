-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cmf_footnoteSimpleFilterPriority', 'cmf_footnote_recorded_plugin_version', 'active_sitewide_plugins', 'cmf_options');
DELETE FROM wp_options WHERE option_name LIKE '%-registration-skipped';
DELETE FROM wp_options WHERE option_name LIKE '%-registered';
DELETE FROM wp_options WHERE option_name LIKE '%-was-registered';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_footnote_disable_footnote_for_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('_footnote_disable_footnote_for_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('_footnote_disable_footnote_for_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_footnote_disable_footnote_for_page');

