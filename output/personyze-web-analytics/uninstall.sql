-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('personyze_account_id', 'personyze_tracking_domains', 'personyze_track_add_to_cart', 'personyze_track_purchase');

