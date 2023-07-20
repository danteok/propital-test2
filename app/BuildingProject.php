<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BuildingProject extends Model
{
   /**
     * Get the priority record associated with the user.
     */
    public function city()
    {
        return $this->hasOne('App\City');
    }
}
