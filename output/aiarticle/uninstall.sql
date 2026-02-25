-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aiarticle_log', 'aiarticle_tongxun', 'aiarticle_tongji');

