-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_shared_counter_bitacoras_v2', '_shared_counter_facebook_v2', '_shared_counter_gbuzz_v2', '_shared_counter_linkedin_v2', '_shared_counter_meneame_v2', '_shared_vote_url_meneame', '_shared_counter_twitter_v2');
DELETE FROM wp_usermeta WHERE meta_key IN ('_shared_counter_bitacoras_v2', '_shared_counter_facebook_v2', '_shared_counter_gbuzz_v2', '_shared_counter_linkedin_v2', '_shared_counter_meneame_v2', '_shared_vote_url_meneame', '_shared_counter_twitter_v2');
DELETE FROM wp_termmeta WHERE meta_key IN ('_shared_counter_bitacoras_v2', '_shared_counter_facebook_v2', '_shared_counter_gbuzz_v2', '_shared_counter_linkedin_v2', '_shared_counter_meneame_v2', '_shared_vote_url_meneame', '_shared_counter_twitter_v2');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_shared_counter_bitacoras_v2', '_shared_counter_facebook_v2', '_shared_counter_gbuzz_v2', '_shared_counter_linkedin_v2', '_shared_counter_meneame_v2', '_shared_vote_url_meneame', '_shared_counter_twitter_v2');

