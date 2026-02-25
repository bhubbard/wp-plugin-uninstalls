-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('giornalismo_photo_credit', 'giornalismo_photo_caption', 'giornalismo_featured_video', 'giornalismo_highlight_one', 'giornalismo_highlight_two', 'giornalismo_highlight_three');
DELETE FROM wp_usermeta WHERE meta_key IN ('giornalismo_photo_credit', 'giornalismo_photo_caption', 'giornalismo_featured_video', 'giornalismo_highlight_one', 'giornalismo_highlight_two', 'giornalismo_highlight_three');
DELETE FROM wp_termmeta WHERE meta_key IN ('giornalismo_photo_credit', 'giornalismo_photo_caption', 'giornalismo_featured_video', 'giornalismo_highlight_one', 'giornalismo_highlight_two', 'giornalismo_highlight_three');
DELETE FROM wp_commentmeta WHERE meta_key IN ('giornalismo_photo_credit', 'giornalismo_photo_caption', 'giornalismo_featured_video', 'giornalismo_highlight_one', 'giornalismo_highlight_two', 'giornalismo_highlight_three');

