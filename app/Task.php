<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Task extends Model
{
 

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'tasks';
    

    /**
     * Get the priority record associated with the user.
     */
    public function priority()
    {
        return $this->hasOne('App\Priority');
    }
}
