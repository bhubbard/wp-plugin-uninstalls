-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bizbaby_plans', 'bizbaby_plan_last_updated', 'bizbaby_plan', 'bizbaby_slogan_option', 'bizbaby_form_shortcodes');

