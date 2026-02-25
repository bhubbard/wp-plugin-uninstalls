-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tmpl_badge_activate_msg');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('newbadge_title', 'newbadge_color');
DELETE FROM wp_usermeta WHERE meta_key IN ('newbadge_title', 'newbadge_color');
DELETE FROM wp_termmeta WHERE meta_key IN ('newbadge_title', 'newbadge_color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('newbadge_title', 'newbadge_color');

