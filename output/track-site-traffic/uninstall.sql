-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plugin_ntracker_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('trackpage_checkbox', 'trackpagetag_textbox');
DELETE FROM wp_usermeta WHERE meta_key IN ('trackpage_checkbox', 'trackpagetag_textbox');
DELETE FROM wp_termmeta WHERE meta_key IN ('trackpage_checkbox', 'trackpagetag_textbox');
DELETE FROM wp_commentmeta WHERE meta_key IN ('trackpage_checkbox', 'trackpagetag_textbox');

