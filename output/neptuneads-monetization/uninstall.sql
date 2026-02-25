-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('neptune_affiliate_id', 'neptune_push_overlay', 'neptune_push_overlay_text');

