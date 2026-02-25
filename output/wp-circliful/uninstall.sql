-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_dimension', '_text', '_info', '_width', '_fontsize', '_percentage', '_fcolor', '_bgcolor', '_fill', '_icon', '_iconSize', '_iconCol', '_inline');
DELETE FROM wp_usermeta WHERE meta_key IN ('_dimension', '_text', '_info', '_width', '_fontsize', '_percentage', '_fcolor', '_bgcolor', '_fill', '_icon', '_iconSize', '_iconCol', '_inline');
DELETE FROM wp_termmeta WHERE meta_key IN ('_dimension', '_text', '_info', '_width', '_fontsize', '_percentage', '_fcolor', '_bgcolor', '_fill', '_icon', '_iconSize', '_iconCol', '_inline');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_dimension', '_text', '_info', '_width', '_fontsize', '_percentage', '_fcolor', '_bgcolor', '_fill', '_icon', '_iconSize', '_iconCol', '_inline');

