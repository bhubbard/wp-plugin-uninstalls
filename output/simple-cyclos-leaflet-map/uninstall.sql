-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cyclosUsersMap_adminuser', 'cyclosUsersMap_token', 'cyclosUsersMap_adminPassword', 'cyclosUsersMap_url', 'cyclosUsersMap_groupId', 'cyclosUsersMap_websiteName', 'cyclosUsersMap_descriptionName', 'cyclosUsersMap_width', 'cyclosUsersMap_height', 'cyclosUsersMap_homeLat', 'cyclosUsersMap_homeLon', 'cyclosUsersMap_homeZoom', 'cyclosUsersMap_references');

