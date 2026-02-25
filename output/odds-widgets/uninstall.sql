-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('odds_widgets_link_to_us', 'odds_widgets_config_data', 'odds_widgets_subscribe_email', 'odds_widgets_subscribe', 'odds_widgets_replace_jquery');

