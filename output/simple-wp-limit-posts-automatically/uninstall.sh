#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'slpa_post_wordcut'
wp option delete 'slpa_post_letters'
wp option delete 'slpa_post_linktext'
wp option delete 'slpa_post_ending'
wp option delete 'slpa_post_home'
wp option delete 'slpa_post_category'
wp option delete 'slpa_post_archive'
wp option delete 'slpa_post_search'
wp option delete 'slpa_striptags'

