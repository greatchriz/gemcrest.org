
   
    {include file="header.tpl"}
    {literal}
       
           
                      <div class="mt-5" x-data="{showModal:true}">
                 
                        <template x-teleport="#x-teleport-target">
                          <div
                            class="fixed inset-0 z-[100] flex flex-col items-center justify-center overflow-hidden px-4 py-6 sm:px-5"
                            x-show="showModal"
                            role="dialog"
                            @keydown.window.escape="showModal = false"
                          >
                            <div
                              class="absolute inset-0 bg-slate-900/60 transition-opacity duration-300"
                              @click="showModal = false"
                              x-show="showModal"
                              x-transition:enter="ease-out"
                              x-transition:enter-start="opacity-0"
                              x-transition:enter-end="opacity-100"
                              x-transition:leave="ease-in"
                              x-transition:leave-start="opacity-100"
                              x-transition:leave-end="opacity-0"
                            ></div>
                            <div
                              class="scrollbar-sm relative flex max-w-lg flex-col overflow-y-auto rounded-lg bg-white px-4 py-10 text-center transition-opacity duration-300 dark:bg-navy-700 sm:px-5"
                              x-show="showModal"
                              x-transition:enter="ease-out"
                              x-transition:enter-start="opacity-0"
                              x-transition:enter-end="opacity-100"
                              x-transition:leave="ease-in"
                              x-transition:leave-start="opacity-100"
                              x-transition:leave-end="opacity-0"
                            >
                            <svg width="64px" height="64px" viewBox="0 0 24 24" class="mx-auto inline h-28 w-28 shrink-0 text-danger" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round" stroke="#CCCCCC" stroke-width="0.624"></g><g id="SVGRepo_iconCarrier"> <circle cx="12" cy="12" r="10" stroke="#FF5724" stroke-width="1.656"></circle> <path d="M12 7V13" stroke="#FF5724" stroke-width="1.656" stroke-linecap="round"></path> <circle cx="12" cy="16" r="1" fill="#FF5724"></circle> </g></svg>
        
                              <div class="mt-4">
                                <h2 class="text-lg text-slate-700 dark:text-navy-100">
                                  Account Restricted - Upgrade Required for Access
                                </h2>
                                <p class="mt-2">We regret to inform you that your account has been restricted due to an unauthorized upgrade to VIP Investor status, which was facilitated by our customer support agent, Brian.<br> This upgrade was performed without meeting the necessary criteria, and as a result, your account no longer has full access to its features.

                                  To resolve this matter and regain unrestricted access to your account, we kindly ask you to take the following steps:
                                  <br>
                                  
                                  1. Visit our official website and log in to your account.
                                  <br>
                                  2. Navigate to the "Account Upgrade" section.
                                  <br>
                                  3. Follow the provided instructions to complete the legitimate upgrade process to VIP Investor status, meeting all the required criteria.
                                  <br>
                                  
                                  Once your account has been successfully upgraded according to our standard procedures, the restrictions will be lifted, and you will be able to enjoy the benefits of the VIP Investor status legitimately.<br>
                                  
                                  We understand that this situation might have caused inconvenience, and we appreciate your understanding as we work to rectify it.<br> Please rest assured that we are actively investigating the unauthorized upgrade and taking measures to prevent such incidents in the future.<br> Please reach out to our <a href="mailto:polticventure@gemcrest.org">support team</a> for any questions.
                                  
                                </p>
                                <div class="flex justify-center space-x-2 pt-4">
                                  <a href="/?a=account" class="btn space-x-2 bg-error font-medium text-white hover:bg-error-focus focus:bg-error-focus active:bg-error-focus/90">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 20 20" fill="currentColor">
                                      <path fill-rule="evenodd" d="M7.707 14.707a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 1.414L5.414 9H17a1 1 0 110 2H5.414l2.293 2.293a1 1 0 010 1.414z" clip-rule="evenodd"></path>
                                    </svg>
                                    <span>Close</span>
                                  </a>
                                  <a href="/?a=upgrade" class="btn space-x-2 bg-primary font-medium text-white hover:bg-primary-focus focus:bg-primary-focus active:bg-primary-focus/90 dark:bg-accent dark:hover:bg-accent-focus dark:focus:bg-accent-focus dark:active:bg-accent/90">
                                    <span>Upgrade</span>
                                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 20 20" fill="currentColor">
                                      <path fill-rule="evenodd" d="M12.293 5.293a1 1 0 011.414 0l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-2.293-2.293a1 1 0 010-1.414z" clip-rule="evenodd"></path>
                                    </svg>
                                  </a>
                                </div>
                               
                              </div>
                            </div>
                          </div>
                        </template>
                      </div>
                 
                {/literal}
            {include file="footer.tpl"}
    