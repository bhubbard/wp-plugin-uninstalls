-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('recently_activated', 'infinite_slider_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tgmpa_dismissed_notice', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('tgmpa_dismissed_notice', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('tgmpa_dismissed_notice', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tgmpa_dismissed_notice', '_wp_page_template');

