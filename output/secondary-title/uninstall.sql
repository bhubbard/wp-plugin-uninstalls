-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('secondary_title_show_donation_notice', 'secondary_title_auto_show', 'secondary_title_title_format');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_secondary_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('_secondary_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('_secondary_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_secondary_title');

