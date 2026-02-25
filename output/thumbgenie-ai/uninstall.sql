-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('thumbgenie_image_model', 'thumbgenie_quality', 'thumbgenie_style', 'thumbgenie_size', 'thumbgenie_api_key', 'thumbgenie_subscription_data');

