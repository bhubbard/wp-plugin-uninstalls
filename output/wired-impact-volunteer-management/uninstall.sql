-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wivm_version', 'volunteer_opp_rsvp_db_version', 'wivm-settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_contact_name', '_contact_phone', '_contact_email', '_location', '_street', '_city', '_state', '_zip', '_one_time_opp', '_start_date_time', '_end_date_time', '_flexible_frequency', '_has_volunteer_limit', '_volunteer_limit', '_form_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_contact_name', '_contact_phone', '_contact_email', '_location', '_street', '_city', '_state', '_zip', '_one_time_opp', '_start_date_time', '_end_date_time', '_flexible_frequency', '_has_volunteer_limit', '_volunteer_limit', '_form_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_contact_name', '_contact_phone', '_contact_email', '_location', '_street', '_city', '_state', '_zip', '_one_time_opp', '_start_date_time', '_end_date_time', '_flexible_frequency', '_has_volunteer_limit', '_volunteer_limit', '_form_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_contact_name', '_contact_phone', '_contact_email', '_location', '_street', '_city', '_state', '_zip', '_one_time_opp', '_start_date_time', '_end_date_time', '_flexible_frequency', '_has_volunteer_limit', '_volunteer_limit', '_form_type');

