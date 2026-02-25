-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zillow_screen_name', 'personal_info', 'dssearchagent-wordpress-edition', 'dsidxpress-custom-options', 'rewrite_rules', 'dsidxpress');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dsidxpress-assembled-url');
DELETE FROM wp_usermeta WHERE meta_key IN ('dsidxpress-assembled-url');
DELETE FROM wp_termmeta WHERE meta_key IN ('dsidxpress-assembled-url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dsidxpress-assembled-url');

