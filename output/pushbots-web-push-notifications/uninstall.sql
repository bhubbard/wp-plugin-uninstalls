-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pb_application_id', 'pb_application_secret', 'pb_website_url', 'pb_safari_push_id', 'pb_enable_welcome_message', 'pb_welcome_title', 'pb_welcome_message');

