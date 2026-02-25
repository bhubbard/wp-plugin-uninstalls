-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('INTAPYBTN_publishable_key', 'INTAPYBTN_wpi_default_amount', 'INTAPYBTN_redirect_url', 'INTAPYBTN_live_key');

