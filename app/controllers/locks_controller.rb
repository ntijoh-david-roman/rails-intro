class LocksController < ApplicationController

    def index
        locks = Lock.all
        render(json: locks)
    end

    def create
        lock = Lock.create(lock_params)
        render(json: lock)
    end

    def show
        id = params[:id]
        lock = Lock.find(id)
        render(json: lock)
    end

    def unlock
        id = params[:id]
        lock = Lock.find(id)
        lock.unlocked = true 
        lock.save
        render(json: {message: 'Unlocked!'})
    end

    def update
        id = params[:id]
        lock = Lock.find(id)
        lock.update(lock_params())         
    end

    def destroy
        id = params[:id]
        lock = Lock.find(id)
        lock.destroy()
    end

    private
    def lock_params
      params.require(:lock).permit(:name)
    end
end
