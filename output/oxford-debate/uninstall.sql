-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('invalid_date', 'invalid_postures', 'purchased', 'key', 'oxd_votes', 'twitter-option', 'facebook-option', 'email-option', 'linkedin-option', 'telegram-option', 'whatsapp-option', 'global_posture_colour_a', 'global_posture_colour_b', 'oxd_colour', 'oxd_bootstrap', 'oxd_fluid', 'oxd_activation_notice_transient');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('initduration-text', 'endduration-text', 'posturea', 'postureb', 'posture_colour_a', 'posture_colour_b', 'votea', 'voteb', 'posture_colour', 'posture', 'color', 'posture_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('initduration-text', 'endduration-text', 'posturea', 'postureb', 'posture_colour_a', 'posture_colour_b', 'votea', 'voteb', 'posture_colour', 'posture', 'color', 'posture_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('initduration-text', 'endduration-text', 'posturea', 'postureb', 'posture_colour_a', 'posture_colour_b', 'votea', 'voteb', 'posture_colour', 'posture', 'color', 'posture_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('initduration-text', 'endduration-text', 'posturea', 'postureb', 'posture_colour_a', 'posture_colour_b', 'votea', 'voteb', 'posture_colour', 'posture', 'color', 'posture_type');

