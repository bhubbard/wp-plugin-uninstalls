-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('brambles_ai_auto_inject', 'brambles_ai_cuid', 'brambles_ai_position', 'brambles_ai_primary_color', 'brambles_ai_secondary_color', 'brambles_ai_welcome_message', 'brambles_ai_header_title', 'brambles_ai_proactive_engagement', 'brambles_ai_stripe_connected', 'brambles_ai_stripe_account_id', 'brambles_ai_debug', 'brambles_ai_api_base_url', 'brambles_ai_install_secret', 'brambles_ai_onboard_log', 'brambles_ai_onboarded', 'brambles_ai_stripe_success', 'brambles_ai_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'brambles_stripe_state_%';

