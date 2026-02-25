-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_popup_trigger_amount', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_popup_trigger_amount', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_popup_trigger_amount', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_popup_trigger_amount', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%display_lightbox_on';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%display_lightbox_on';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%display_lightbox_on';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%display_lightbox_on';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%display_lightbox';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%display_lightbox';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%display_lightbox';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%display_lightbox';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%display_lightbox_on_posts';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%display_lightbox_on_posts';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%display_lightbox_on_posts';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%display_lightbox_on_posts';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%identifier';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%identifier';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%identifier';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%identifier';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%disable_the_content_hooks';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%disable_the_content_hooks';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%disable_the_content_hooks';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%disable_the_content_hooks';

