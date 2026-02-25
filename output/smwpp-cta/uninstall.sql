-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smwpp_align', 'smwpp_isize', 'smwpp_fbpage', 'smwpp_tweetpage', 'smwpp_linkedinpage', 'smwpp_fburl', 'smwpp_tweeturl', 'smwpp_linkedinurl', 'smwpp_location');

