-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('formadiable_form_email_fields', 'formadiable_list_of_block_domains', 'formadiable_display_error_message');

