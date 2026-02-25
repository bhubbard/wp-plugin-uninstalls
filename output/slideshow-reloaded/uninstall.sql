-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('slideshow-reloaded-last-fetch-upsell', 'slideshow-reloaded-roles-updated', 'slideshow_reloaded_upsell_url', 'slideshow_reloaded_secret_id');

