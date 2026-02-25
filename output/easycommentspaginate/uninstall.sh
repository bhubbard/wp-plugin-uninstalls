#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easycommentspaginate_paginateContainer'
wp option delete 'easycommentspaginate_paginateElement'
wp option delete 'easycommentspaginate_hashPage'
wp option delete 'easycommentspaginate_elementsPerPage'
wp option delete 'easycommentspaginate_effect'
wp option delete 'easycommentspaginate_slideOffset'
wp option delete 'easycommentspaginate_firstButton'
wp option delete 'easycommentspaginate_firstButtonText'
wp option delete 'easycommentspaginate_lastButton'
wp option delete 'easycommentspaginate_lastButtonText'
wp option delete 'easycommentspaginate_prevButton'
wp option delete 'easycommentspaginate_prevButtonText'
wp option delete 'easycommentspaginate_nextButton'
wp option delete 'easycommentspaginate_nextButtonText'
wp option delete 'easycommentspaginate_custom_css'
wp option delete 'easycommentspaginate_test_mode'
wp option delete 'easycommentspaginate_class'

