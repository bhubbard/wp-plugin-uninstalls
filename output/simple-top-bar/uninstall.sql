-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stbar_bd', 'stbar_bd_tel', 'stbar_bd_laptop', 'stbar_bd_pro', 'stbar_view');

