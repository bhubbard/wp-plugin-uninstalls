-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('arp_related_post_settings', 'arp_related_post_query_all_posts');

