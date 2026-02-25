-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('coremetrics_userID', 'coremetrics_blogID', 'cm_cookie_domain', 'cm_client_managed', 'cm_data_collection_domain', 'cm_eluminate_location', 'cm_custom_script', 'cm_custom_pageID', 'cm_test_override', 'cm_country_attribute', 'cm_language_attribute', 'cm_track_drafts', 'cm_dismiss_option', 'cm_customEventDB_version', 'cm_eventpoints_option', 'cm_eventpoints_onoff', 'cm_tactical_attributes', 'cm_strategic_attributes', 'cm_attribute_override');

