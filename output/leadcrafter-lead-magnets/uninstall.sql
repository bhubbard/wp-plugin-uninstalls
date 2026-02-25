-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('leadcrafter_api_secret', 'leadcrafter_form_id', 'leadcrafter_fallback_email');

