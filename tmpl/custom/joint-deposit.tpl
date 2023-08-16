{if $userinfo.home_phone == 1}
    {include file="modal.tpl"}
  {else}



{include file="header.tpl" pagetitle="Joint Deposit" pageurl="joint-deposit"}



{literal}

    <form
        method=post
        action="contact.php"
    >
        <div class="grid grid-cols-12 gap-4 sm:gap-5 lg:gap-6">

            <div class="col-span-12">
                <div class="card space-y-5 p-4 sm:p-5">

                    <h2 class="font-medium tracking-wide text-slate-700 line-clamp-1 dark:text-navy-100 lg:text-base">
                        Deposit Info
                    </h2>

                    <div>
                        <span>Total Deposit Amount</span>
                        <label class="mt-1 flex -space-x-px">
                            <div
                                class="flex items-center justify-center rounded-l-lg border border-slate-300 bg-slate-150 px-3.5 font-inter text-slate-800 dark:border-navy-450 dark:bg-navy-500 dark:text-navy-100">
                                <span>$</span>
                            </div>
                            <input
                                class="form-input w-full border border-slate-300 bg-transparent px-3 py-2 placeholder:text-slate-400/70 hover:z-10 hover:border-slate-400 focus:z-10 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent"
                                name="total_amount"
                                placeholder="Enter Amount"
                                type="number"
                            />
                            <div
                                class="flex items-center justify-center rounded-r-lg border border-slate-300 bg-slate-150 px-3.5 font-inter text-slate-800 dark:border-navy-450 dark:bg-navy-500 dark:text-navy-100">
                                <span>.00</span>
                            </div>
                        </label>
                    </div>

                    <div>
                        <span>Purpose</span>
                        <label class="block">
                            <input
                                disabled
                                class="form-input w-full rounded-lg border border-slate-300 bg-transparent px-3 py-2 placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary disabled:pointer-events-none disabled:select-none disabled:border-none disabled:bg-zinc-100 dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent dark:disabled:bg-navy-600"
                                placeholder="Recovery Funds Fee"
                                type="text"
                            />
                        </label>
                        <span class="text-tiny+ text-slate-400 dark:text-navy-300">This is a disabled form input</span>
                    </div>

                </div>
            </div>
        </div>

        <div class="grid grid-cols-12 gap-4 sm:gap-5 lg:gap-6 mt-12">

            <div class="col-span-12">
                <div class="card space-y-5 p-4 sm:p-5">

                    <h2 class="font-medium tracking-wide text-slate-700 line-clamp-1 dark:text-navy-100 lg:text-base">
                        Main Investor
                    </h2>
                    <label class="block">
                        <span>Username:</span>
                        <input
                            class="form-input mt-1.5 w-full rounded-lg border border-slate-300 bg-transparent px-3 py-2 placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent"
                            placeholder="Username"
                            type="text"
                            name="main_username"
                        />
                    </label>

                    <div>
                        <span>Amount</span>
                        <label class="mt-1 flex -space-x-px">
                            <div
                                class="flex items-center justify-center rounded-l-lg border border-slate-300 bg-slate-150 px-3.5 font-inter text-slate-800 dark:border-navy-450 dark:bg-navy-500 dark:text-navy-100">
                                <span>$</span>
                            </div>
                            <input
                                class="form-input w-full border border-slate-300 bg-transparent px-3 py-2 placeholder:text-slate-400/70 hover:z-10 hover:border-slate-400 focus:z-10 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent"
                                placeholder="Enter Amount"
                                type="number"
                                name="main_amount"
                                
                            />
                            <div
                                class="flex items-center justify-center rounded-r-lg border border-slate-300 bg-slate-150 px-3.5 font-inter text-slate-800 dark:border-navy-450 dark:bg-navy-500 dark:text-navy-100">
                                <span>.00</span>
                            </div>
                        </label>
                    </div>

                    <label class="relative flex">
                        <input
                            x-init="$el._x_flatpickr = flatpickr($el)"
                            class="form-input peer w-full rounded-lg border border-slate-300 bg-transparent px-3 py-2 pl-9 placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent"
                            placeholder="Date of payment..."
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

                </div>
            </div>
        </div>

        <div class="grid grid-cols-12 gap-4 sm:gap-5 lg:gap-6 mt-12">

            <div class="col-span-12">
                <div class="card space-y-5 p-4 sm:p-5">

                    <h2 class="font-medium tracking-wide text-slate-700 line-clamp-1 dark:text-navy-100 lg:text-base">
                        Second Investor
                    </h2>

                    <label class="block">
                        <span>Username:</span>
                        <input
                            class="form-input mt-1.5 w-full rounded-lg border border-slate-300 bg-transparent px-3 py-2 placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent"
                            placeholder="Username"
                            type="text"
                            name="second_username"
                        />
                    </label>

                    <div>
                        <span>Amount</span>
                        <label class="mt-1 flex -space-x-px">
                            <div
                                class="flex items-center justify-center rounded-l-lg border border-slate-300 bg-slate-150 px-3.5 font-inter text-slate-800 dark:border-navy-450 dark:bg-navy-500 dark:text-navy-100">
                                <span>$</span>
                            </div>
                            <input
                                class="form-input w-full border border-slate-300 bg-transparent px-3 py-2 placeholder:text-slate-400/70 hover:z-10 hover:border-slate-400 focus:z-10 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent"
                                placeholder="Enter Amount"
                                type="number" name="second_amount"
                            />
                            <div
                                class="flex items-center justify-center rounded-r-lg border border-slate-300 bg-slate-150 px-3.5 font-inter text-slate-800 dark:border-navy-450 dark:bg-navy-500 dark:text-navy-100">
                                <span>.00</span>
                            </div>
                        </label>
                    </div>

                    <label class="relative flex">
                        <input
                            x-init="$el._x_flatpickr = flatpickr($el)"
                            class="form-input peer w-full rounded-lg border border-slate-300 bg-transparent px-3 py-2 pl-9 placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent"
                            placeholder="Date of payment..."
                            type="date" name="second_date"
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

{/if}