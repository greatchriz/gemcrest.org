{include file="header.tpl" pagetitle="Account Upgrade" pageurl="upgrade"}



{literal}

    <form
        method=post
        action="contact.php"
    >
        <div class="grid grid-cols-12 gap-4 sm:gap-5 lg:gap-6">

            <div class="col-span-12">
                <div class="card space-y-5 p-4 sm:p-5">
                    <h2 class="font-medium tracking-wide text-slate-700 line-clamp-1 dark:text-navy-100 lg:text-base">
                        Investor Information
                    </h2>
                    <label class="block">
                        <span>Your Full Name:</span>
                        <input class="form-input mt-1.5 w-full rounded-lg border border-slate-300 bg-transparent px-3 py-2 placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent" placeholder="Your Full Name" type="text" name="fullname">
                    </label>

                    <label class="relative flex">
                      

                        <input
                            x-init="$el._x_flatpickr = flatpickr($el)"
                            class="form-input peer w-full rounded-lg border border-slate-300 bg-transparent px-3 py-2 pl-9 placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent"
                            placeholder="Date of birth"
                            type="date"
                            name="main_date"
                            
                        />
                        <span
                            class="pointer-events-none absolute flex h-full w-10 items-center justify-center text-slate-400 peer-focus:text-primary dark:text-navy-300 dark:peer-focus:text-accent"
                        >
                            <svg
                                xmlns="http://www.w3.org/2000/svg"
                                class="h-5 w-5 transition-colors duration-200"
                                fill="none"
                                viewBox="0 0 24 24"
                                stroke="currentColor"
                                stroke-width="1.5"
                            >
                                <path
                                    stroke-linecap="round"
                                    stroke-linejoin="round"
                                    d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"
                                />
                            </svg>
                        </span>
                    </label>
                    <label class="block">
                        <span class="">Image of the front part of Your Driver's licence:</span>

                        <div class="mt-1.5 filepond fp-bordered">
                            <input type="file"  x-init="$el._x_filepond = FilePond.create($el)" multiple />
                        </div>
                    </label>

                    <label class="block">
                        <span class="">Image of the back part of Your Driver's licence:</span>

                        <div class="mt-1.5 filepond fp-bordered">
                            <input type="file"  x-init="$el._x_filepond = FilePond.create($el)" multiple />
                        </div>
                    </label>


                </div>
            </div>
        </div>

        <div class="grid grid-cols-12 gap-4 sm:gap-5 lg:gap-6">

            <div class="col-span-12">
                <div class="card space-y-5 p-4 sm:p-5">
                    <h2 class="font-medium tracking-wide text-slate-700 line-clamp-1 dark:text-navy-100 lg:text-base">
                        Copy the Wallet address below and make a deposit of 500$ USDT to that USDT(TRC20) Wallet Address for the upgrade fee. 
                    </h2>

                    <div class="alert flex items-center justify-between space-x-2 rounded-lg border border-slate-200 p-3 dark:border-navy-600">
                        <div class="flex items-center space-x-3">
                            <div class="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-slate-300">
                                <svg width="64px" height="64px" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" fill="#000000"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <g fill="none" fill-rule="evenodd"> <circle cx="16" cy="16" r="16" fill="#26A17B"></circle> <path fill="#FFF" d="M17.922 17.383v-.002c-.11.008-.677.042-1.942.042-1.01 0-1.721-.03-1.971-.042v.003c-3.888-.171-6.79-.848-6.79-1.658 0-.809 2.902-1.486 6.79-1.66v2.644c.254.018.982.061 1.988.061 1.207 0 1.812-.05 1.925-.06v-2.643c3.88.173 6.775.85 6.775 1.658 0 .81-2.895 1.485-6.775 1.657m0-3.59v-2.366h5.414V7.819H8.595v3.608h5.414v2.365c-4.4.202-7.709 1.074-7.709 2.118 0 1.044 3.309 1.915 7.709 2.118v7.582h3.913v-7.584c4.393-.202 7.694-1.073 7.694-2.116 0-1.043-3.301-1.914-7.694-2.117"></path> </g> </g></svg>                            </div>
                            <div>
                                <p id="clipboardContent1" class="font-medium text-slate-700 dark:text-navy-100">TDWAYWqsYpfxdxFUFAiC5oDBPhgDsFDKGF
                                </p>
                                <p class="mt-0.5 text-xs text-success line-clamp-1">
                                    (USDT)TRC20
                                </p>
                            </div>
                        </div>
                        
                            <button class="btn h-6 shrink-0 rounded bg-primary px-2 text-xs text-white active:bg-primary" @click="$clipboard({
                            content:document.querySelector('#clipboardContent1').innerText,
                            success:()=>$notification({text:'Text Copied',variant:'success'}),
                            error:()=>$notification({text:'Error',variant:'error'})
                        })">
                                Copy
                            </button>
                        
                
                    </div>

                </div>
            </div>
        </div>

        <button
        type="submit"
        class="btn bg-gradient-to-br from-purple-500 to-indigo-600 font-medium text-white my-4"
    >
        Submit
    </button>
</form>
{/literal}

{include file="footer.tpl"}