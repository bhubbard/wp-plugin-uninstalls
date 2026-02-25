-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('about_author_box_twitter', 'about_author_box_facebook', 'about_author_box_instagram', 'about_author_box_behance', 'about_author_box_dribbble', 'about_author_box_vine', 'about_author_box_linkedin', 'about_author_box_pinterest');
DELETE FROM wp_usermeta WHERE meta_key IN ('about_author_box_twitter', 'about_author_box_facebook', 'about_author_box_instagram', 'about_author_box_behance', 'about_author_box_dribbble', 'about_author_box_vine', 'about_author_box_linkedin', 'about_author_box_pinterest');
DELETE FROM wp_termmeta WHERE meta_key IN ('about_author_box_twitter', 'about_author_box_facebook', 'about_author_box_instagram', 'about_author_box_behance', 'about_author_box_dribbble', 'about_author_box_vine', 'about_author_box_linkedin', 'about_author_box_pinterest');
DELETE FROM wp_commentmeta WHERE meta_key IN ('about_author_box_twitter', 'about_author_box_facebook', 'about_author_box_instagram', 'about_author_box_behance', 'about_author_box_dribbble', 'about_author_box_vine', 'about_author_box_linkedin', 'about_author_box_pinterest');

