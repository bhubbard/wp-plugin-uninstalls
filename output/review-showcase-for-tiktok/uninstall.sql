-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'revishfo_cache_key%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('revishfo_embed', 'revishfo_video_url', 'revishfo_video_id', 'revishfo_star_rating', 'revishfo_cta_text', 'revishfo_cta_url', 'revishfo_rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('revishfo_embed', 'revishfo_video_url', 'revishfo_video_id', 'revishfo_star_rating', 'revishfo_cta_text', 'revishfo_cta_url', 'revishfo_rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('revishfo_embed', 'revishfo_video_url', 'revishfo_video_id', 'revishfo_star_rating', 'revishfo_cta_text', 'revishfo_cta_url', 'revishfo_rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('revishfo_embed', 'revishfo_video_url', 'revishfo_video_id', 'revishfo_star_rating', 'revishfo_cta_text', 'revishfo_cta_url', 'revishfo_rating');

