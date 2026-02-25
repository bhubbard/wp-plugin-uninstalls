-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acwp_skiplinks', 'acwp_skiplinks_body_open', 'acwp_skiplinks_turnsides', 'acwp_skiplinks_noanimation', 'acwp_skiplinks_noshadows', 'acwp_skiplinks_header_label', 'acwp_skiplinks_header_id', 'acwp_skiplinks_footer_label', 'acwp_skiplinks_footer_id', 'acwp_skiplinks_content_label', 'acwp_skiplinks_content_id', 'acwp_skiplinks_bg', 'acwp_skiplinks_txt', 'acwp_skiplinks_nometa');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('acwp_skiplinks');
DELETE FROM wp_usermeta WHERE meta_key IN ('acwp_skiplinks');
DELETE FROM wp_termmeta WHERE meta_key IN ('acwp_skiplinks');
DELETE FROM wp_commentmeta WHERE meta_key IN ('acwp_skiplinks');

