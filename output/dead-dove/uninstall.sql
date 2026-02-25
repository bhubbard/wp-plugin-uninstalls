-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('deaddove_blur_amount', 'deaddove_warning_terms', 'content_warning');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('author_user_id', 'author_user_role', 'deaddove_user_warning_terms', '_blured_featured_image', 'content_warning', 'forum_content_warning_tags', 'content_warning_tags', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('author_user_id', 'author_user_role', 'deaddove_user_warning_terms', '_blured_featured_image', 'content_warning', 'forum_content_warning_tags', 'content_warning_tags', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('author_user_id', 'author_user_role', 'deaddove_user_warning_terms', '_blured_featured_image', 'content_warning', 'forum_content_warning_tags', 'content_warning_tags', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('author_user_id', 'author_user_role', 'deaddove_user_warning_terms', '_blured_featured_image', 'content_warning', 'forum_content_warning_tags', 'content_warning_tags', 'first_name', 'last_name');

