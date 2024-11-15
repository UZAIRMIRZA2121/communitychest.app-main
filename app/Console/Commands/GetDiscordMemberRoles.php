<?php

namespace App\Console\Commands;

use App\Models\DiscordRole;
use Illuminate\Console\Command;

class GetDiscordMemberRoles extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'discord:fetchMemberRoles';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Fetch every discord member roles from discord server by their discord id.';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        DiscordRole::fetchMemberRoles();
    }
}
