-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hsb_allowed_user_roles', 'hsb_helpscout_form_id', 'hsb_helpscout_subdomain', 'hsb_beacon_options', 'hsb_beacon_icon', 'hsb_beacon_colour', 'hsb_hide_credits', 'hsb_beacon_intro', 'hsb_allow_attachments', 'hsb_show_on_frontend');

