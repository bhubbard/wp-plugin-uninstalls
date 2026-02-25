#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'headlineengine_developer_mode'
wp option delete 'headlineengine_powerwords_list'
wp option delete 'headlineengine_post_types'
wp option delete 'headlineengine_reading_grade_enable'
wp option delete 'headlineengine_reading_grade_range_min'
wp option delete 'headlineengine_reading_grade_target'
wp option delete 'headlineengine_reading_grade_range_max'
wp option delete 'headlineengine_readability_enable'
wp option delete 'headlineengine_readability_range_min'
wp option delete 'headlineengine_readability_target'
wp option delete 'headlineengine_readability_range_max'
wp option delete 'headlineengine_wordcount_enable'
wp option delete 'headlineengine_wordcount_range_min'
wp option delete 'headlineengine_wordcount_target'
wp option delete 'headlineengine_wordcount_range_max'
wp option delete 'headlineengine_length_enable'
wp option delete 'headlineengine_length_range_min'
wp option delete 'headlineengine_length_target'
wp option delete 'headlineengine_length_range_max'
wp option delete 'headlineengine_powerwords_enable'

