-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('google_placeId', 'reviewme_logo_display', 'google_review_clientId');

