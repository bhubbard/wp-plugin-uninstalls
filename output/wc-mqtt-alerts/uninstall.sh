#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wooshiftrmqtt_shiftr_url'
wp option delete 'wooshiftrmqtt_shiftr_username'
wp option delete 'wooshiftrmqtt_shiftr_password'
wp option delete 'wooshiftrmqtt_shiftr_topic_prefix'
wp option delete 'wooshiftrmqtt_shiftr_retain'
wp option delete 'wooshiftrmqtt_shiftr_qos'
wp option delete 'wooshiftrmqtt_options'

