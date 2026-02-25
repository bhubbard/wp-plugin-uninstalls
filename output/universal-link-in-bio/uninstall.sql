-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('universal_link_in_bio_enabled', 'universal_link_in_bio_redirect_url');

