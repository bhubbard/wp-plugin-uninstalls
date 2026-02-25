-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('followthis', 'ft_verifier', 'ft_meta_version', 'activated_plugin', 'ft_publisher_is_registered', 'ft_publisher_is_active', 'ft_publisher_is_approved', 'ft_publisher_info', 'ft_default_topics');

