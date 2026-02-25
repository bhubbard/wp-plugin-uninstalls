-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yturbo_options');
DELETE FROM wp_options WHERE option_name LIKE 'related-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ytrssenabled_meta_value', 'ytremove_meta_value', 'ytad1meta', 'ytad2meta', 'ytad3meta', 'ytad4meta', 'ytad5meta', 'template_meta', 'custom_template', 'ytextendedhtmlmeta', 'ytpostdatemeta');
DELETE FROM wp_usermeta WHERE meta_key IN ('ytrssenabled_meta_value', 'ytremove_meta_value', 'ytad1meta', 'ytad2meta', 'ytad3meta', 'ytad4meta', 'ytad5meta', 'template_meta', 'custom_template', 'ytextendedhtmlmeta', 'ytpostdatemeta');
DELETE FROM wp_termmeta WHERE meta_key IN ('ytrssenabled_meta_value', 'ytremove_meta_value', 'ytad1meta', 'ytad2meta', 'ytad3meta', 'ytad4meta', 'ytad5meta', 'template_meta', 'custom_template', 'ytextendedhtmlmeta', 'ytpostdatemeta');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ytrssenabled_meta_value', 'ytremove_meta_value', 'ytad1meta', 'ytad2meta', 'ytad3meta', 'ytad4meta', 'ytad5meta', 'template_meta', 'custom_template', 'ytextendedhtmlmeta', 'ytpostdatemeta');

