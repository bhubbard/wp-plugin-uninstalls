-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cyklodev_autosummary_border', 'cyklodev_autosummary_border_color');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cyklodev_abstract');
DELETE FROM wp_usermeta WHERE meta_key IN ('cyklodev_abstract');
DELETE FROM wp_termmeta WHERE meta_key IN ('cyklodev_abstract');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cyklodev_abstract');

