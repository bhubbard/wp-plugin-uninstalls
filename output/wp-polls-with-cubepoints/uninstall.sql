-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('poll_latestpoll', 'poll_cubepoints', 'poll_ans_sortby', 'poll_ans_sortorder', 'widget_polls', 'poll_currentpoll', 'poll_bar', 'poll_ajax_style', 'poll_ans_result_sortby', 'poll_ans_result_sortorder', 'poll_archive_perpage', 'poll_archive_displaypoll', 'poll_archive_url', 'poll_archive_show', 'poll_close', 'poll_logging_method', 'poll_cookielog_expiry', 'poll_allowtovote', 'poll_template_voteheader', 'poll_template_votebody', 'poll_template_votefooter', 'poll_template_resultheader', 'poll_template_resultbody', 'poll_template_resultbody2', 'poll_template_resultfooter', 'poll_template_resultfooter2', 'poll_template_pollarchivelink', 'poll_template_pollarchiveheader', 'poll_template_pollarchivefooter', 'poll_template_pollarchivepagingheader', 'poll_template_pollarchivepagingfooter', 'poll_template_disable', 'poll_template_error', 'stats_url', 'stats_display');

