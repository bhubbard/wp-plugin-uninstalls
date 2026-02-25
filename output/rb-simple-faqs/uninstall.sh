#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rbd-faq-question-color'
wp option delete 'rbd-faq-question-bg'
wp option delete 'rbd-faq-category-color'
wp option delete 'rbd-faq-category-bg'
wp option delete 'rbd-faq-answer-color'
wp option delete 'rbd-faq-answer-bg'
wp option delete 'rbd-faq-icon-color'

