-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fsdirectory_sortstyle', 'fsdirectory_displaystyle', 'fsdirectory_hidethumbnail', 'fsdirectory_stylethumbnail', 'fssettings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('facstaffphone', 'facstaffemail', 'facstaffwebsite', 'facstafftwitter', 'facstafflinkedin', 'facstafftitle', 'facstaffofficelocation', 'facstaffnotes', 'facstaffcompany');
DELETE FROM wp_usermeta WHERE meta_key IN ('facstaffphone', 'facstaffemail', 'facstaffwebsite', 'facstafftwitter', 'facstafflinkedin', 'facstafftitle', 'facstaffofficelocation', 'facstaffnotes', 'facstaffcompany');
DELETE FROM wp_termmeta WHERE meta_key IN ('facstaffphone', 'facstaffemail', 'facstaffwebsite', 'facstafftwitter', 'facstafflinkedin', 'facstafftitle', 'facstaffofficelocation', 'facstaffnotes', 'facstaffcompany');
DELETE FROM wp_commentmeta WHERE meta_key IN ('facstaffphone', 'facstaffemail', 'facstaffwebsite', 'facstafftwitter', 'facstafflinkedin', 'facstafftitle', 'facstaffofficelocation', 'facstaffnotes', 'facstaffcompany');

